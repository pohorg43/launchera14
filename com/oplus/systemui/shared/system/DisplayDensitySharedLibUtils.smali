.class public Lcom/oplus/systemui/shared/system/DisplayDensitySharedLibUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_DENSITY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DisplayDensitySharedLibUtils"

.field private static sBaseDensity:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearBaseDensityCache()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/oplus/systemui/shared/system/DisplayDensitySharedLibUtils;->sBaseDensity:I

    return-void
.end method

.method public static getBaseDensity(I)I
    .registers 2

    invoke-static {p0}, Lcom/oplus/systemui/shared/system/DisplayDensitySharedLibUtils;->getBaseDisplayDensityDpi(I)I

    move-result p0

    if-eqz p0, :cond_d

    const/4 v0, -0x1

    if-ne p0, v0, :cond_a

    goto :goto_d

    :cond_a
    div-int/lit16 p0, p0, 0xa0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x3

    return p0
.end method

.method private static getBaseDisplayDensityDpi(I)I
    .registers 3

    sget v0, Lcom/oplus/systemui/shared/system/DisplayDensitySharedLibUtils;->sBaseDensity:I

    if-nez v0, :cond_12

    const/4 v0, -0x1

    :try_start_5
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result p0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_10

    move v0, p0

    :catch_10
    :cond_10
    sput v0, Lcom/oplus/systemui/shared/system/DisplayDensitySharedLibUtils;->sBaseDensity:I

    :cond_12
    sget p0, Lcom/oplus/systemui/shared/system/DisplayDensitySharedLibUtils;->sBaseDensity:I

    return p0
.end method
