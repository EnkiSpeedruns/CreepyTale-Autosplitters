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
    if (current.levelNumber > old.levelNumber)
        return true;

    // Final split: from episode 8 to the menu
    if (old.levelNumber == 8 && current.levelNumber == 0)
        return true;

    return false;
}

reset
{
    // Reset only if returning to the menu from an episode other than 8
    if (old.levelNumber > 0 && old.levelNumber < 8 && current.levelNumber == 0)
        return true;

    return false;
}