.class public Lcom/oplus/log/util/DeviceMemoryUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z

.field public static final FIELDS_PROC_MEMINFO:[Ljava/lang/String;

.field public static final FIELDS_SYS_MEMINFO:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    const-string v0, "MemTotal:"

    const-string v1, "MemFree:"

    const-string v2, "Buffers:"

    const-string v3, "Cached:"

    const-string v4, "Active:"

    const-string v5, "Inactive:"

    const-string v6, "Dirty:"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/DeviceMemoryUtil;->FIELDS_SYS_MEMINFO:[Ljava/lang/String;

    const-string v1, "VmLck:"

    const-string v2, "VmRSS:"

    const-string v3, "VmSize:"

    const-string v4, "VmExe:"

    const-string v5, "VmStk:"

    const-string v6, "VmLib"

    const-string v7, "Threads:"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/DeviceMemoryUtil;->FIELDS_PROC_MEMINFO:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSysMemoryInfo()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    const-string v2, "android.os.Process"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, [Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, [J

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-string v5, "readProcLines"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_57

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/oplus/log/util/DeviceMemoryUtil;->FIELDS_SYS_MEMINFO:[Ljava/lang/String;

    array-length v5, v4

    new-array v9, v5, [J

    const-wide/16 v10, 0x1e

    aput-wide v10, v9, v6

    const-wide/16 v10, -0x1e

    aput-wide v10, v9, v7

    new-instance v10, Ljava/lang/String;

    const-string v11, "/proc/meminfo"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v10, v3, v6

    aput-object v4, v3, v7

    aput-object v9, v3, v8

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_45
    if-ge v6, v5, :cond_57

    sget-object v2, Lcom/oplus/log/util/DeviceMemoryUtil;->FIELDS_SYS_MEMINFO:[Ljava/lang/String;

    aget-object v2, v2, v6

    aget-wide v3, v9, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_54} :catch_58
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_54} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_54} :catch_58
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_54} :catch_58
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_54} :catch_58
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_54} :catch_58

    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    :cond_57
    return-object v0

    :catch_58
    return-object v1
.end method


# virtual methods
.method public getProcMemoryInfo()Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :try_start_6
    const-string v1, "android.os.Process"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, [Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, [J

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string v4, "readProcLines"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_6f

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/oplus/log/util/DeviceMemoryUtil;->FIELDS_PROC_MEMINFO:[Ljava/lang/String;

    array-length v4, v3

    new-array v8, v4, [J

    const-wide/16 v9, -0x1

    aput-wide v9, v8, v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    new-instance v10, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/proc/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/status"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v10, v2, v5

    aput-object v3, v2, v6

    aput-object v8, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5d
    if-ge v5, v4, :cond_6f

    sget-object v1, Lcom/oplus/log/util/DeviceMemoryUtil;->FIELDS_PROC_MEMINFO:[Ljava/lang/String;

    aget-object v1, v1, v5

    aget-wide v2, v8, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6c} :catch_70
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6c} :catch_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6c} :catch_70
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6c} :catch_70
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6c} :catch_70
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6c} :catch_70

    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    :cond_6f
    return-object p0

    :catch_70
    return-object v0
.end method
