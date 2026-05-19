.class public Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/backup/mode/BackupRestoreContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackupItemInfo"
.end annotation


# static fields
.field public static final DYNAMIC_SHORTCUT_DEFAULT_SUPPORT:I = 0x1

.field public static final DYNAMIC_SHORTCUT_FEATURE_NOT_SUPPORT:I = 0x2

.field public static final DYNAMIC_SHORTCUT_RUS_NOT_SUPPORT:I = 0x4

.field public static final EMPTY_INT:I = -0x1

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "BR-Launcher_BackupItemInfo"


# instance fields
.field private mAppWidgetId:I

.field private mAppWidgetProvider:Ljava/lang/String;

.field private mCardCategory:I

.field private mCardType:I

.field private mCellX:I

.field private mCellY:I

.field private mClassName:Ljava/lang/String;

.field private mContainer:I

.field private mDynamicShortcutSupportState:I

.field private mEditableAttrs:I

.field private mIconPackage:Ljava/lang/String;

.field private mIconResource:Ljava/lang/String;

.field private mIconType:I

.field private mId:J

.field private mIdentification:I

.field private mInstallSource:Ljava/lang/String;

.field private mInstallState:Lcom/android/launcher/download/InstallState;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIntent:Ljava/lang/String;

.field private mItemType:I

.field private mMapKey:I

.field private mOldScreenId:I

.field private mPackageName:Ljava/lang/String;

.field private mProfileId:J

.field private mRank:I

.field private mRecommendId:I

.field private mScreenId:I

.field private mServiceId:Ljava/lang/String;

.field private mShortcutIcon:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mShortcutInfo:Landroid/content/pm/ShortcutInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSpanX:I

.field private mSpanY:I

.field private mStatus:I

.field private mTitle:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mIntent:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mClassName:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mScreenId:I

    iput-object v0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mIconPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mIconResource:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mDynamicShortcutSupportState:I

    iput-object v0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mAppWidgetProvider:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mServiceId:Ljava/lang/String;

    iput v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mCardCategory:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mIdentification:I

    iput v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mEditableAttrs:I

    iput-object v0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mInstallSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppWidgetId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mAppWidgetId:I

    return p0
.end method

.method public getAppWidgetProvider()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mAppWidgetProvider:Ljava/lang/String;

    return-object p0
.end method

.method public getCardCategory()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mCardCategory:I

    return p0
.end method

.method public getCardIdentification()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mIdentification:I

    return p0
.end method

.method public getCardType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mCardType:I

    return p0
.end method

.method public getCellX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mCellX:I

    return p0
.end method

.method public getCellY()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mCellY:I

    return p0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getContainer()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mContainer:I

    return p0
.end method

.method public getDynamicShortcutSupportState()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mDynamicShortcutSupportState:I

    return p0
.end method

.method public getEditableAttrs()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mEditableAttrs:I

    return p0
.end method

.method public getIconPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mIconPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getIconResource()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mIconResource:Ljava/lang/String;

    return-object p0
.end method

.method public getIconType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mIconType:I

    return p0
.end method

.method public getId()J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mId:J

    return-wide v0
.end method

.method public getInstallSource()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mInstallSource:Ljava/lang/String;

    return-object p0
.end method

.method public getInstallState()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->value()I

    move-result p0

    return p0

    :cond_9
    const/high16 p0, -0x80000000

    return p0
.end method

.method public getIntent()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mIntent:Ljava/lang/String;

    return-object p0
.end method

.method public getItemType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mItemType:I

    return p0
.end method

.method public getMapKey()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mMapKey:I

    return p0
.end method

.method public getOldScreenId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mOldScreenId:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileId()J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mProfileId:J

    return-wide v0
.end method

.method public getRank()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mRank:I

    return p0
.end method

.method public getRecommendId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mRecommendId:I

    return p0
.end method

.method public getScreenId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mScreenId:I

    return p0
.end method

.method public getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mServiceId:Ljava/lang/String;

    if-nez p0, :cond_6

    const-string p0, ""

    :cond_6
    return-object p0
.end method

.method public getShortcutIcon()[B
    .registers 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mShortcutIcon:[B

    if-eqz p0, :cond_b

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object p0
.end method

.method public getSpanX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mSpanX:I

    return p0
.end method

.method public getSpanY()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mSpanY:I

    return p0
.end method

.method public getStatus()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mStatus:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mUserId:I

    return p0
.end method

.method public isNewInstallingApp()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public setAppWidgetId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mAppWidgetId:I

    return-void
.end method

.method public setAppWidgetProvider(Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mAppWidgetProvider:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public setCardCategory(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mCardCategory:I

    return-void
.end method

.method public setCardIdentification(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mIdentification:I

    return-void
.end method

.method public setCardType(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mCardType:I

    return-void
.end method

.method public setCellX(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mCellX:I

    return-void
.end method

.method public setCellY(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mCellY:I

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mClassName:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public setContainer(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mContainer:I

    return-void
.end method

.method public setDynamicShortcutSupportState(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mDynamicShortcutSupportState:I

    return-void
.end method

.method public setEditableAttrs(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mEditableAttrs:I

    return-void
.end method

.method public setIconPackage(Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mIconPackage:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public setIconResource(Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mIconResource:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public setIconType(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mIconType:I

    return-void
.end method

.method public setId(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mId:J

    return-void
.end method

.method public setInstallSource(Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mInstallSource:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public setInstallState(I)V
    .registers 3

    new-instance v0, Lcom/android/launcher/download/InstallState;

    invoke-direct {v0, p1}, Lcom/android/launcher/download/InstallState;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mIntent:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public setItemType(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mItemType:I

    return-void
.end method

.method public setMapKey(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mMapKey:I

    return-void
.end method

.method public setOldScreenId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mOldScreenId:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mPackageName:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public setProfileId(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mProfileId:J

    return-void
.end method

.method public setRank(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mRank:I

    return-void
.end method

.method public setRecommendId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mRecommendId:I

    return-void
.end method

.method public setScreenId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mScreenId:I

    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mServiceId:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public setShortcutIcon([B)V
    .registers 2
    .param p1  # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_a

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mShortcutIcon:[B

    :cond_a
    return-void
.end method

.method public setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V
    .registers 2
    .param p1  # Landroid/content/pm/ShortcutInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-void
.end method

.method public setSpanX(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mSpanX:I

    return-void
.end method

.method public setSpanY(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mSpanY:I

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mStatus:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mTitle:Ljava/lang/String;

    :cond_c
    return-void
.end method

.method public setUserId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mUserId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "info: ["

    const-string v1, "id = "

    invoke-static {v0, v1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", itemType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mItemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mapKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mMapKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", container = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mOldScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mCellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mCellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spanX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mSpanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spanY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mSpanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", profileId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mProfileId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rank = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mRank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dynamicShortcutSupportState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mDynamicShortcutSupportState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shortcutInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", widgetId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", widgetProvider = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mAppWidgetProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cardType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mCardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mCardCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRecommendId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->mRecommendId:I

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
