.class public final synthetic Lcom/android/launcher/badge/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/badge/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/UserHandle;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/badge/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/badge/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/badge/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/m;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/badge/m;->a:I

    packed-switch v0, :pswitch_data_32

    goto :goto_27

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/launcher/badge/m;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->e(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0

    :pswitch_11  #0x1
    iget-object p0, p0, Lcom/android/launcher/badge/m;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/UserHandle;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->d(Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_1c  #0x0
    iget-object p0, p0, Lcom/android/launcher/badge/m;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_27
    iget-object p0, p0, Lcom/android/launcher/badge/m;->b:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->b(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1c  #00000000
        :pswitch_11  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
