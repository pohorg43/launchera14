.class public final synthetic Lcom/android/common/util/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/util/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/OplusFolder;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/util/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/ShortcutsChangedTask;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/common/util/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/AllSetActivity;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/common/util/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/common/util/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/common/util/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/util/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/o;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/common/util/o;->a:I

    packed-switch v0, :pswitch_data_56

    goto :goto_4a

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/common/util/o;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Landroid/util/Pair;

    invoke-static {p0, p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->b(Ljava/lang/String;Landroid/util/Pair;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :pswitch_11  #0x4
    iget-object p0, p0, Lcom/android/common/util/o;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_20  #0x3
    iget-object p0, p0, Lcom/android/common/util/o;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/ShortcutsChangedTask;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/ShortcutsChangedTask;->n(Lcom/android/launcher3/model/ShortcutsChangedTask;Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p0

    return-object p0

    :pswitch_2b  #0x2
    iget-object p0, p0, Lcom/android/common/util/o;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolder;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :pswitch_36  #0x1
    iget-object p0, p0, Lcom/android/common/util/o;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/db/DbTracker;->c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3f  #0x0
    iget-object p0, p0, Lcom/android/common/util/o;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/SharedPreferences;

    check-cast p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-static {p0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->d(Landroid/content/SharedPreferences;Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_4a
    iget-object p0, p0, Lcom/android/common/util/o;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/AllSetActivity;

    check-cast p1, Lcom/android/quickstep/GestureState;

    invoke-static {p0, p1}, Lcom/android/quickstep/interaction/AllSetActivity;->b(Lcom/android/quickstep/interaction/AllSetActivity;Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/AnimatedFloat;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_3f  #00000000
        :pswitch_36  #00000001
        :pswitch_2b  #00000002
        :pswitch_20  #00000003
        :pswitch_11  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
