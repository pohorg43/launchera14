.class public final Lcom/oplus/glcomponent/GlobalConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0003\u001a\u00020\u0002H\u0082 J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\n"
    }
    d2 = {
        "Lcom/oplus/glcomponent/GlobalConfig;",
        "",
        "",
        "useHwTexture",
        "Landroid/content/Context;",
        "context",
        "Lh4/z;",
        "initGlobalConfig",
        "<init>",
        "()V",
        "glcomponent_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/glcomponent/GlobalConfig;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/glcomponent/GlobalConfig;

    invoke-direct {v0}, Lcom/oplus/glcomponent/GlobalConfig;-><init>()V

    sput-object v0, Lcom/oplus/glcomponent/GlobalConfig;->INSTANCE:Lcom/oplus/glcomponent/GlobalConfig;

    const-string v1, "effects-lib"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/oplus/glcomponent/GlobalConfig;->useHwTexture()Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native useHwTexture()Z
.end method


# virtual methods
.method public final initGlobalConfig(Landroid/content/Context;)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/glcomponent/utils/FileUtil;->INSTANCE:Lcom/oplus/glcomponent/utils/FileUtil;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/glcomponent/utils/FileUtil;->init(Landroid/content/res/AssetManager;Landroid/content/res/Resources;)V

    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/glcomponent/utils/Debugger;->registerLogSwitchObserver(Landroid/content/Context;)V

    return-void
.end method
