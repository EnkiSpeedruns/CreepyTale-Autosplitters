state("CreepyTale")
{
    int levelNumber: "mono-2.0-bdwgc.dll", 0x00497DA8, 0x4B0, 0x230, 0x2B0, 0xF80;
}

start
{
    return current.levelNumber == 8 && old.levelNumber == 0;
}

split
{
    return old.levelNumber == 8 && current.levelNumber == 0;
}

// No hay reset automático: debe hacerse manualmente
