.class Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderAnimationManager;->createFolderChildAnimationSet(Landroid/view/View;Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

.field public final synthetic val$childView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->val$childView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->lambda$onAnimationEnd$0(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onAnimationEnd$0(Landroid/view/View;)V
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->val$childView:Landroid/view/View;

    new-instance v0, Lcom/android/launcher3/folder/s;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/s;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
