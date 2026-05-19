.class public final synthetic Lcom/android/launcher/layout/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherProvider;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/layout/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/icons/ComponentWithLabel;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/layout/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/layout/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskThumbnailView;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/layout/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/layout/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/layout/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ui/baseview/BaseViewManager;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher/layout/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher/layout/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/layout/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher/layout/a;->a:I

    packed-switch v0, :pswitch_data_58

    goto :goto_4e

    :pswitch_6  #0x7
    iget-object p0, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->f1(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_f  #0x6
    iget-object p0, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->b(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0

    :pswitch_18  #0x5
    iget-object p0, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->i(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0

    :pswitch_21  #0x4
    iget-object p0, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :pswitch_2a  #0x3
    iget-object p0, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->l(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_33  #0x2
    iget-object p0, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/icons/ComponentWithLabel;

    invoke-static {p0}, Lcom/android/launcher3/icons/IconCache;->f(Lcom/android/launcher3/icons/ComponentWithLabel;)Lcom/android/launcher3/icons/ComponentWithLabel;

    move-result-object p0

    return-object p0

    :pswitch_3c  #0x1
    iget-object p0, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherProvider;

    invoke-static {p0}, Lcom/android/launcher3/LauncherProvider;->c(Lcom/android/launcher3/LauncherProvider;)Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-result-object p0

    return-object p0

    :pswitch_45  #0x0
    iget-object p0, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0}, Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;->a(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0

    :goto_4e
    iget-object p0, p0, Lcom/android/launcher/layout/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->createView()Lcom/oplus/zoom/ui/baseview/IView;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_45  #00000000
        :pswitch_3c  #00000001
        :pswitch_33  #00000002
        :pswitch_2a  #00000003
        :pswitch_21  #00000004
        :pswitch_18  #00000005
        :pswitch_f  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method
