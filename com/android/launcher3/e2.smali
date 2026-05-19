.class public final synthetic Lcom/android/launcher3/e2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/e2;

.field public static final synthetic c:Lcom/android/launcher3/e2;

.field public static final synthetic d:Lcom/android/launcher3/e2;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/e2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/e2;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/e2;->b:Lcom/android/launcher3/e2;

    new-instance v0, Lcom/android/launcher3/e2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/e2;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/e2;->c:Lcom/android/launcher3/e2;

    new-instance v0, Lcom/android/launcher3/e2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/e2;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/e2;->d:Lcom/android/launcher3/e2;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/e2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/e2;->a:I

    packed-switch p0, :pswitch_data_1c

    goto :goto_14

    :pswitch_6  #0x1
    check-cast p1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object p0

    return-object p0

    :pswitch_d  #0x0
    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-static {p1}, Lcom/android/launcher3/OplusWorkspace;->W(Lcom/android/launcher3/CellLayout;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :goto_14
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->e(Landroid/widget/FrameLayout$LayoutParams;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_d  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
