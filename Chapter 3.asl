state("CreepyTale")
{
    int levelNumber: "mono-2.0-bdwgc.dll", 0x00497DA8, 0x4B0, 0x230, 0x2B0, 0xF80;
}

start
{
    return current.levelNumber == 7 && old.levelNumber == 0;
}

split
{
    // Split from episode 7 to 8
    if (old.levelNumber == 7 && current.levelNumber == 8)
        return true;

    // Final Split: From episode 8 to 0 (Credits)
    if (old.levelNumber == 8 && current.levelNumber == 0)
        return true;

    return false;
}

reset
{
    // Reset if go back from episode 7 to menu (inicio del capítulo 3)
    return current.levelNumber == 0 && (old.levelNumber == 7);
}