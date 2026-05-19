.class public Lcom/oplus/zoom/ui/tips/SnackBarManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final SNACK_BAK_BOTTOM_DP:I = 0x28

.field private static final STAY_TIME:I = 0x1388


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;

.field private mSnackBar:Lcom/coui/appcompat/snackbar/COUISnackBar;

.field private mTipController:Lcom/oplus/zoom/ui/tips/TipsController;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/ui/tips/TipsController;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/zoom/ui/tips/SnackBarManager$1;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/ui/tips/SnackBarManager$1;-><init>(Lcom/oplus/zoom/ui/tips/SnackBarManager;)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mListener:Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/android/wm/shell/R$style;->Theme_COUI:I

    invoke-direct {v0, p2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mTipController:Lcom/oplus/zoom/ui/tips/TipsController;

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$layout;->zoom_snack_bar_layout:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/snackbar/COUISnackBar;

    iput-object p1, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mSnackBar:Lcom/coui/appcompat/snackbar/COUISnackBar;

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mWm:Landroid/view/WindowManager;

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mSnackBar:Lcom/coui/appcompat/snackbar/COUISnackBar;

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mListener:Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setOnStatusChangeListener(Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/ui/tips/SnackBarManager;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/tips/SnackBarManager;->lambda$showSnackBar$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/ui/tips/SnackBarManager;)Landroid/view/WindowManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mWm:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/ui/tips/SnackBarManager;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private initLayoutParam()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mContext:Landroid/content/Context;

    const/high16 v1, 0x42200000  # 40.0f

    invoke-static {v0, v1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenHeight()I

    move-result v1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result v2

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7f6

    invoke-direct {v3, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v3, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, 0x1000108

    or-int/2addr p0, v4

    iput p0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p0, 0x1

    iput p0, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 p0, -0x2

    iput p0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v1, v0

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string p0, "ZoomSnackBar"

    invoke-virtual {v3, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$showSnackBar$0(Landroid/view/View;)V
    .registers 5

    const-string p1, "onClick button"

    invoke-static {p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V

    :try_start_5
    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mTipController:Lcom/oplus/zoom/ui/tips/TipsController;

    invoke-virtual {p1}, Lcom/oplus/zoom/ui/tips/TipsController;->getUiManager()Lcom/oplus/zoom/ui/ZoomUiManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/ui/ZoomUiManager;->requestChangeZoomState(I)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oplus.exserviceui"

    const-string v2, "com.oplusos.zoomwindow.setting.ZoomSettingActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2b

    goto :goto_40

    :catch_2b
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showSnackBar error, e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V

    :goto_40
    return-void
.end method


# virtual methods
.method public dismissSnackBar()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mSnackBar:Lcom/coui/appcompat/snackbar/COUISnackBar;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->d()V

    :cond_7
    return-void
.end method

.method public showSnackBar()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-eq v0, v1, :cond_12

    const-string p0, "not current user, don\'t show snack bar"

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-direct {p0}, Lcom/oplus/zoom/ui/tips/SnackBarManager;->initLayoutParam()V

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mSnackBar:Lcom/coui/appcompat/snackbar/COUISnackBar;

    iget-object v1, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$string;->zoom_learn_more_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setContentText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mSnackBar:Lcom/coui/appcompat/snackbar/COUISnackBar;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setDuration(I)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mSnackBar:Lcom/coui/appcompat/snackbar/COUISnackBar;

    iget-object v1, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$string;->zoom_go_learn_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/guide/g;

    invoke-direct {v2, p0}, Lcom/android/launcher/guide/g;-><init>(Lcom/oplus/zoom/ui/tips/SnackBarManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->i(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :try_start_43
    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mWm:Landroid/view/WindowManager;

    if-eqz v0, :cond_5c

    const-string v0, "createSnakeBar, addView"

    invoke-static {v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_55} :catch_56

    goto :goto_5c

    :catch_56
    move-exception v0

    const-string v1, "showSnackBar addView error"

    invoke-static {v1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_5c
    :goto_5c
    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/SnackBarManager;->mSnackBar:Lcom/coui/appcompat/snackbar/COUISnackBar;

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->j()V

    return-void
.end method
