.class public final Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager;->calculateTextViewCanTransferColor(Lcom/android/launcher3/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $dragLayer:Landroid/view/ViewGroup;

.field public final synthetic $launcher:Lcom/android/launcher3/Launcher;

.field public final synthetic $textViewColorCalculate:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/widget/TextView;Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;->$textViewColorCalculate:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;->$launcher:Lcom/android/launcher3/Launcher;

    iput-object p4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;->$dragLayer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/widget/TextView;Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;->onGlobalLayout$lambda$1(Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/widget/TextView;Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/ViewGroup;Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;Landroid/widget/TextView;Lcom/android/launcher/wallpaper/LauncherBitmapManager;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;->onGlobalLayout$lambda$1$lambda$0(Landroid/view/ViewGroup;Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;Landroid/widget/TextView;Lcom/android/launcher/wallpaper/LauncherBitmapManager;)V

    return-void
.end method

.method private static final onGlobalLayout$lambda$1(Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/widget/TextView;Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;)V
    .registers 9

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$textViewColorCalculate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dragLayer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "LauncherBitmapManager"

    if-eqz v0, :cond_55

    const-string/jumbo v0, "onGlobalLayoutListener: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsTextCanTransferColor = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getMIsTextCanTransferColor$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    invoke-static {p1, p3, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$isTextCanTransferColor(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Landroid/widget/TextView;)Z

    move-result p3

    invoke-static {p1, p3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$setMIsTextCanTransferColor$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Z)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p3

    if-eqz p3, :cond_77

    const-string/jumbo p3, "view add to launcher, mIsTextCanTransferColor = "

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getMIsTextCanTransferColor$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    sget-object p3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/common/debug/c;

    invoke-direct {v0, p4, p0, p2, p1}, Lcom/android/common/debug/c;-><init>(Landroid/view/ViewGroup;Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;Landroid/widget/TextView;Lcom/android/launcher/wallpaper/LauncherBitmapManager;)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final onGlobalLayout$lambda$1$lambda$0(Landroid/view/ViewGroup;Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;Landroid/widget/TextView;Lcom/android/launcher/wallpaper/LauncherBitmapManager;)V
    .registers 5

    const-string v0, "$dragLayer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$textViewColorCalculate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$1"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_27
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p0, 0x0

    invoke-static {p3, p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$setMIsPendingRefreshCanTransferTextColor$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Z)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 9

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;->$textViewColorCalculate:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;->$launcher:Lcom/android/launcher3/Launcher;

    iget-object v6, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;->$dragLayer:Landroid/view/ViewGroup;

    new-instance v7, Lcom/android/exceptionmonitor/util/e;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/exceptionmonitor/util/e;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager$calculateTextViewCanTransferColor$1$onGlobalLayoutListener$1;Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/widget/TextView;Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
