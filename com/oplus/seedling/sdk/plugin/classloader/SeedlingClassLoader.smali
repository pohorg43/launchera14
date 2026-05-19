.class public final Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader;
.super Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader$Companion;
    }
.end annotation


# static fields
.field private static final CHANNEL_CLASS_PREFIX:Ljava/lang/String; = "com.oplus.channel.server."

.field public static final Companion:Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader$Companion;

.field private static final SEEDLING_CLASS_PREFIX:Ljava/lang/String; = "com.oplus.seedling.sdk."

.field private static final TAG:Ljava/lang/String; = "SeedlingClassLoader"


# instance fields
.field private createDate:J

.field private final dexPath:Ljava/lang/String;

.field private final mHostClassLoader:Ljava/lang/ClassLoader;

.field private final mSeedlingInitConfig:Lcom/oplus/seedling/sdk/SeedlingInitConfig;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader;->Companion:Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/oplus/seedling/sdk/SeedlingInitConfig;)V
    .registers 7

    const-string v0, "dexPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeLibPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mHostClassLoader"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_1b

    invoke-virtual {p5}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->getDeltaOfLCAParentClassLoader()I

    move-result v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    invoke-static {p4, v0}, Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoaderKt;->calLCAParentClassLoader(Ljava/lang/ClassLoader;I)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader;->dexPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader;->mHostClassLoader:Ljava/lang/ClassLoader;

    iput-object p5, p0, Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader;->mSeedlingInitConfig:Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader;->createDate:J

    return-void
.end method

.method private final shouldUseHostClassLoaderToLoadClass(Ljava/lang/String;)Z
    .registers 5

    const/4 p0, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    const-string v2, "com.oplus.seedling.sdk."

    invoke-static {p1, v2, v1, p0}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-ne v2, v0, :cond_f

    move v2, v0

    goto :goto_10

    :cond_f
    move v2, v1

    :goto_10
    if-eqz v2, :cond_13

    return v0

    :cond_13
    if-eqz p1, :cond_1f

    const-string v2, "com.oplus.channel.server."

    invoke-static {p1, v2, v1, p0}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-ne v2, v0, :cond_1f

    move v2, v0

    goto :goto_20

    :cond_1f
    move v2, v1

    :goto_20
    if-eqz v2, :cond_23

    return v0

    :cond_23
    if-eqz p1, :cond_2f

    const-string v2, "kotlin.jvm.functions."

    invoke-static {p1, v2, v1, p0}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    if-ne p0, v0, :cond_2f

    move p0, v0

    goto :goto_30

    :cond_2f
    move p0, v1

    :goto_30
    if-eqz p0, :cond_33

    return v0

    :cond_33
    return v1
.end method


# virtual methods
.method public final getCreateDate()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader;->createDate:J

    return-wide v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader;->Companion:Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader$Companion;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader;->dexPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader$Companion;->ensureFileReadOnly(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader;->shouldUseHostClassLoaderToLoadClass(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "clazz"

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader;->mHostClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_19
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setCreateDate(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader;->createDate:J

    return-void
.end method
