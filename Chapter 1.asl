state("CreepyTale")
{
    int levelNumber: "mono-2.0-bdwgc.dll", 0x00497DA8, 0x4B0, 0x230, 0x2B0, 0xF80;
}

start
{
    return current.levelNumber == 1 && old.levelNumber == 0;
}

split
{
    // Split when advancing from one episode to the next
    if (current.levelNumber > old.levelNumber && current.levelNumber <= 3)
        return true;

      // Final split: from episode 3 to 4 (End of the Chapter)
    if (old.levelNumber == 3 && current.levelNumber == 4)
        return true;

    return false;
}

reset
{
    // Reset if going back to menu from Chapter 1 Episodes
    return current.levelNumber == 0 && old.levelNumber >= 1 && old.levelNumber <= 3;
}
