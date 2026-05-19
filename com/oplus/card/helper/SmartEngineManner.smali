.class public final Lcom/oplus/card/helper/SmartEngineManner;
.super Lcom/oplus/card/helper/EngineManner;
.source ""


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 3

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/card/helper/EngineManner;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;)V

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

.method public isErrorCode(I)Z
    .registers 2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_c

    const/4 p0, 0x3

    if-eq p1, p0, :cond_c

    const/4 p0, 0x4

    if-ne p1, p0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method
