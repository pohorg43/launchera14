.class public final Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnSubscribeDataChangeListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$OnDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/OplusTaskbarView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnSubscribeDataChangeListener$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnSubscribeDataChangeListener$1;->onItemAdd$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnSubscribeDataChangeListener$1;->onItemRemove$lambda$1(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method private static final onItemAdd$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->access$onAddSubscribeItem(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method private static final onItemRemove$lambda$1(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->access$onRemoveSubscribeItem(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method


# virtual methods
.method public onItemAdd(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnSubscribeDataChangeListener$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    new-instance v0, Lcom/android/launcher3/taskbar/NamedTask;

    new-instance v1, Lcom/android/launcher3/model/s;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/model/s;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/model/data/ItemInfo;)V

    const-string/jumbo p1, "onAddSubscribeItem"

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/taskbar/NamedTask;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->access$enqueue(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/taskbar/NamedTask;Z)V

    return-void
.end method

.method public onItemRemove(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnSubscribeDataChangeListener$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    new-instance v0, Lcom/android/launcher3/taskbar/NamedTask;

    new-instance v1, Lcom/android/launcher/widget/a;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/model/data/ItemInfo;)V

    const-string/jumbo p1, "onRemoveSubscribeItem"

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/taskbar/NamedTask;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->access$enqueue(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/taskbar/NamedTask;Z)V

    return-void
.end method
