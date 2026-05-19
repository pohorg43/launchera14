.class public interface abstract Lcom/oplus/card/manager/domain/ICardView;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SHOW_CARD_DURATION:J = 0x12cL

.field public static final WAIT_USER_UNLOCK_TIME:J = 0xfa0L


# virtual methods
.method public cacheCardElement()V
    .registers 1

    return-void
.end method

.method public clearCardCachedElement()V
    .registers 1

    return-void
.end method

.method public executeCardDestroy(Z)V
    .registers 2

    return-void
.end method

.method public executeCardOnDragEnd(Ljava/lang/Boolean;)V
    .registers 2

    return-void
.end method

.method public executeCardOnDragStart()V
    .registers 1

    return-void
.end method

.method public findCardView([I)Lcom/android/launcher3/card/LauncherCardView;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppTransAnimRadius(Lcom/android/launcher3/BaseQuickstepLauncher;)I
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float p0, p0

    invoke-static {p1, p0}, Lcom/android/common/util/IconUtils;->getBigFolderOrCardRadius(Landroid/content/Context;F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getCardModel()Lcom/android/launcher3/card/CardModelWrapper;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCardName()Lcom/android/launcher3/BubbleTextView;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDrawTitleFlgWhenDrag()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSmartView()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUiDataForDrag()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public handleGetViewCallback(Landroid/view/View;I)Ljava/lang/Boolean;
    .registers 3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isShowCardName()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isViewScreenshotValid()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public loadCard()V
    .registers 1

    return-void
.end method

.method public loadCard(Lpantanal/app/bean/PantanalUIData;)V
    .registers 2

    return-void
.end method

.method public loadInstantCard(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public logCardInfo()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public markDrawWithPic(Z)V
    .registers 2

    return-void
.end method

.method public markKeepResumedStateOnDetach()V
    .registers 1

    return-void
.end method

.method public markUnsubscribedOnDetach()V
    .registers 1

    return-void
.end method

.method public onCardCategoryGet(I)V
    .registers 2

    return-void
.end method

.method public onUpdateCardConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 2

    return-void
.end method

.method public onUpdateData()V
    .registers 1

    return-void
.end method

.method public pauseCard()V
    .registers 1

    return-void
.end method

.method public refreshForConfigLoad()V
    .registers 1

    return-void
.end method

.method public refreshForPermissionChanged(ZZ)V
    .registers 3

    return-void
.end method

.method public refreshViewScreenshot()V
    .registers 1

    return-void
.end method

.method public resumeCard(ZZ)V
    .registers 3

    return-void
.end method

.method public setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;)V
    .registers 2

    return-void
.end method

.method public setCardName(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setCardNameAndUpdateDb(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setDrawPicForDrag(Z)V
    .registers 2

    return-void
.end method

.method public setDrawTitleFlgWhenDrag(Z)V
    .registers 2

    return-void
.end method

.method public setEngineManner(Lcom/oplus/card/helper/EngineManner;)V
    .registers 2

    return-void
.end method

.method public setPreviewUiData(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setSmartView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public setTextVisible(Z)V
    .registers 2

    return-void
.end method

.method public showLoadingIfNeed()V
    .registers 1

    return-void
.end method

.method public updateTextSize(Lcom/android/launcher3/Launcher;)V
    .registers 2

    return-void
.end method
