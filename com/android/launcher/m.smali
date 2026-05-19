.class public final synthetic Lcom/android/launcher/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 4

    iput p2, p0, Lcom/android/launcher/m;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_27

    const/4 v0, 0x2

    if-eq p2, v0, :cond_21

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p2, v0, :cond_15

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/m;->b:I

    return-void

    :cond_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/m;->b:I

    return-void

    :cond_1b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/m;->b:I

    return-void

    :cond_21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/m;->b:I

    return-void

    :cond_27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/m;->b:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/m;->a:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_33

    :pswitch_6  #0x4
    iget p0, p0, Lcom/android/launcher/m;->b:I

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->e(ILcom/android/wm/shell/bubbles/Bubble;)Z

    move-result p0

    return p0

    :pswitch_f  #0x3
    iget p0, p0, Lcom/android/launcher/m;->b:I

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->a(ILandroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0

    :pswitch_18  #0x2
    iget p0, p0, Lcom/android/launcher/m;->b:I

    check-cast p1, Lcom/android/launcher3/allapps/BaseAdapterProvider;

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->a(ILcom/android/launcher3/allapps/BaseAdapterProvider;)Z

    move-result p0

    return p0

    :pswitch_21  #0x1
    iget p0, p0, Lcom/android/launcher/m;->b:I

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/Launcher;->r(ILcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_2a  #0x0
    iget p0, p0, Lcom/android/launcher/m;->b:I

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->s0(ILcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :goto_33
    iget p0, p0, Lcom/android/launcher/m;->b:I

    check-cast p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->b(ILcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)Z

    move-result p0

    return p0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_21  #00000001
        :pswitch_18  #00000002
        :pswitch_f  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
