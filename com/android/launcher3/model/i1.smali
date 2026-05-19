.class public final synthetic Lcom/android/launcher3/model/i1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/model/i1;

.field public static final synthetic c:Lcom/android/launcher3/model/i1;

.field public static final synthetic d:Lcom/android/launcher3/model/i1;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/i1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/i1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/i1;->b:Lcom/android/launcher3/model/i1;

    new-instance v0, Lcom/android/launcher3/model/i1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/i1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/i1;->c:Lcom/android/launcher3/model/i1;

    new-instance v0, Lcom/android/launcher3/model/i1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/i1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/i1;->d:Lcom/android/launcher3/model/i1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/model/i1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/model/i1;->a:I

    packed-switch p0, :pswitch_data_1c

    goto :goto_14

    :pswitch_6  #0x1
    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {p1}, Lcom/android/launcher3/popup/PopupDataProvider;->d(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_d  #0x0
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p0

    return-object p0

    :goto_14
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {p1}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->e(Lcom/android/wm/shell/recents/RecentTasksController;)Lcom/android/wm/shell/recents/RecentTasks;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_d  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
