.class public final Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper$listenHomeKey$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/HomeKeyObserver$OnHomeKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->listenHomeKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper$listenHomeKey$1;->this$0:Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomeKeyLongPressed()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper$listenHomeKey$1;->this$0:Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->getRecommendSettingDialog()Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j(Z)V

    :cond_c
    return-void
.end method

.method public onHomeKeyPressed()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper$listenHomeKey$1;->this$0:Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->getRecommendSettingDialog()Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j(Z)V

    :cond_c
    return-void
.end method
