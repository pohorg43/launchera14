.class public final synthetic Lcom/android/launcher/sellmode/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(IILandroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/sellmode/a;->c:I

    iput p2, p0, Lcom/android/launcher/sellmode/a;->d:I

    iput-object p3, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(IILcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/sellmode/a;->c:I

    iput p2, p0, Lcom/android/launcher/sellmode/a;->d:I

    iput-object p3, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 5

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/sellmode/a;->c:I

    iput p3, p0, Lcom/android/launcher/sellmode/a;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/sellmode/SaleModeWidgetController;II)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/sellmode/a;->c:I

    iput p3, p0, Lcom/android/launcher/sellmode/a;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/icons/cache/BaseIconCache;II)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/sellmode/a;->c:I

    iput p3, p0, Lcom/android/launcher/sellmode/a;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;II)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/sellmode/a;->c:I

    iput p3, p0, Lcom/android/launcher/sellmode/a;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;II)V
    .registers 5

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/sellmode/a;->c:I

    iput p3, p0, Lcom/android/launcher/sellmode/a;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;II)V
    .registers 5

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/sellmode/a;->c:I

    iput p3, p0, Lcom/android/launcher/sellmode/a;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    packed-switch v0, :pswitch_data_66

    goto :goto_5a

    :pswitch_6  #0x6
    iget v0, p0, Lcom/android/launcher/sellmode/a;->c:I

    iget v1, p0, Lcom/android/launcher/sellmode/a;->d:I

    iget-object p0, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->b(IILandroid/os/Bundle;)V

    return-void

    :pswitch_12  #0x5
    iget-object v0, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget v1, p0, Lcom/android/launcher/sellmode/a;->c:I

    iget p0, p0, Lcom/android/launcher/sellmode/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->w0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;II)V

    return-void

    :pswitch_1e  #0x4
    iget-object v0, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;

    iget v1, p0, Lcom/android/launcher/sellmode/a;->c:I

    iget p0, p0, Lcom/android/launcher/sellmode/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->c(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;II)V

    return-void

    :pswitch_2a  #0x3
    iget v0, p0, Lcom/android/launcher/sellmode/a;->c:I

    iget v1, p0, Lcom/android/launcher/sellmode/a;->d:I

    iget-object p0, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->a0(IILcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void

    :pswitch_36  #0x2
    iget-object v0, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget v1, p0, Lcom/android/launcher/sellmode/a;->c:I

    iget p0, p0, Lcom/android/launcher/sellmode/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->m(Lcom/android/quickstep/TouchInteractionService$TISBinder;II)V

    return-void

    :pswitch_42  #0x1
    iget-object v0, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/icons/cache/BaseIconCache;

    iget v1, p0, Lcom/android/launcher/sellmode/a;->c:I

    iget p0, p0, Lcom/android/launcher/sellmode/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->a(Lcom/android/launcher3/icons/cache/BaseIconCache;II)V

    return-void

    :pswitch_4e  #0x0
    iget-object v0, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/sellmode/SaleModeWidgetController;

    iget v1, p0, Lcom/android/launcher/sellmode/a;->c:I

    iget p0, p0, Lcom/android/launcher/sellmode/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/android/launcher/sellmode/SaleModeWidgetController;->a(Lcom/android/launcher/sellmode/SaleModeWidgetController;II)V

    return-void

    :goto_5a
    iget-object v0, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/android/launcher/sellmode/a;->c:I

    iget p0, p0, Lcom/android/launcher/sellmode/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/oplus/settingslib/provider/OplusSearchHighlightUtils;->b(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4e  #00000000
        :pswitch_42  #00000001
        :pswitch_36  #00000002
        :pswitch_2a  #00000003
        :pswitch_1e  #00000004
        :pswitch_12  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
