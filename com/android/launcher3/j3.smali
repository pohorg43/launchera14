.class public final synthetic Lcom/android/launcher3/j3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/j3;

.field public static final synthetic c:Lcom/android/launcher3/j3;

.field public static final synthetic d:Lcom/android/launcher3/j3;

.field public static final synthetic e:Lcom/android/launcher3/j3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/j3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/j3;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j3;->b:Lcom/android/launcher3/j3;

    new-instance v0, Lcom/android/launcher3/j3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/j3;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j3;->c:Lcom/android/launcher3/j3;

    new-instance v0, Lcom/android/launcher3/j3;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/j3;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j3;->d:Lcom/android/launcher3/j3;

    new-instance v0, Lcom/android/launcher3/j3;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/j3;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j3;->e:Lcom/android/launcher3/j3;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/j3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/j3;->a:I

    packed-switch p0, :pswitch_data_26

    goto :goto_1c

    :pswitch_6  #0x2
    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d  #0x1
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->d(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    return-object p0

    :pswitch_14  #0x0
    new-instance p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;-><init>(Lcom/android/launcher3/CellLayout;)V

    return-object p0

    :goto_1c
    check-cast p1, Lz3/a;

    invoke-interface {p1}, Lz3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_14  #00000000
        :pswitch_d  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
