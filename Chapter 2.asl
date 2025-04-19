state("CreepyTale")
{
    int levelNumber: "mono-2.0-bdwgc.dll", 0x00497DA8, 0x4B0, 0x230, 0x2B0, 0xF80;
}

start
{
    return current.levelNumber == 4 && old.levelNumber == 0;
}

split
{
    // Split when advancing from one episode to the next
    if (current.levelNumber > old.levelNumber && current.levelNumber <= 6)
        return true;

    // Final split: from episode 6 to 7 (End of the Chapter 2)
    if (old.levelNumber == 6 && current.levelNumber == 7)
        return true;

    return false;
}

reset
{
    // Reset if going back to menu from Chapter 2 Episodes
    return current.levelNumber == 0 && old.levelNumber >= 4 && old.levelNumber <= 6;
}