.class public final synthetic Lcom/android/launcher/batchdrag/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/android/launcher/batchdrag/b;

.field public static final synthetic c:Lcom/android/launcher/batchdrag/b;

.field public static final synthetic d:Lcom/android/launcher/batchdrag/b;

.field public static final synthetic e:Lcom/android/launcher/batchdrag/b;

.field public static final synthetic f:Lcom/android/launcher/batchdrag/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/batchdrag/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/b;->b:Lcom/android/launcher/batchdrag/b;

    new-instance v0, Lcom/android/launcher/batchdrag/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/b;->c:Lcom/android/launcher/batchdrag/b;

    new-instance v0, Lcom/android/launcher/batchdrag/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/b;->d:Lcom/android/launcher/batchdrag/b;

    new-instance v0, Lcom/android/launcher/batchdrag/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/b;->e:Lcom/android/launcher/batchdrag/b;

    new-instance v0, Lcom/android/launcher/batchdrag/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/b;->f:Lcom/android/launcher/batchdrag/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/batchdrag/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher/batchdrag/b;->a:I

    packed-switch p0, :pswitch_data_2a

    goto :goto_22

    :pswitch_6  #0x3
    check-cast p1, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->g(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object p0

    return-object p0

    :pswitch_d  #0x2
    check-cast p1, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->a(Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;)Landroid/view/WindowManager;

    move-result-object p0

    return-object p0

    :pswitch_14  #0x1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_1b  #0x0
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-static {p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->b(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    return-object p0

    :goto_22
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->g(Landroid/widget/FrameLayout$LayoutParams;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1b  #00000000
        :pswitch_14  #00000001
        :pswitch_d  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
