.class public final Lcom/android/launcher3/card/seed/SeedEngineManner;
.super Lcom/oplus/card/helper/EngineManner;
.source ""


# instance fields
.field private final context:Landroid/content/Context;

.field private final seedParams:Lcom/android/launcher3/card/seed/SeedParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/card/seed/SeedParams;Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "seedParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/oplus/card/helper/EngineManner;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;)V

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedEngineManner;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/card/seed/SeedEngineManner;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    return-void
.end method


# virtual methods
.method public encapsulateBundle(Lpantanal/app/bean/PantanalUIData;)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/EngineManner;->getCardInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mInitData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Lcom/oplus/card/helper/EngineManner;->getCardInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mInitData:Ljava/lang/String;

    const-string v1, "key_seedling_init_data"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lpantanal/app/bean/PantanalUIData;->toJsonString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "key_ui_data"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedEngineManner;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedEngineManner;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    return-object p0
.end method

.method public isErrorCode(I)Z
    .registers 2

    const/16 p0, 0x800

    if-eq p1, p0, :cond_b

    const/16 p0, 0x7d1

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public needUpdateCardVisibleRect()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
