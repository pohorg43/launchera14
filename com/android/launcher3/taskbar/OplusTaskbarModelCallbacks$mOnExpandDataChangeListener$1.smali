.class public final Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnExpandDataChangeListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$OnDataChangeListener;


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

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnExpandDataChangeListener$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnExpandDataChangeListener$1;->onDataChange$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Ljava/util/List;)V

    return-void
.end method

.method private static final onDataChange$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Ljava/util/List;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$allItemInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateExpandData"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->access$updateExpandData(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Ljava/util/List;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method public onDataChange(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "allItemInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnExpandDataChangeListener$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    new-instance v0, Lcom/android/launcher3/taskbar/NamedTask;

    new-instance v1, Lcom/android/launcher/widget/a;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Ljava/util/List;)V

    const-string/jumbo p1, "updateExpandData"

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/taskbar/NamedTask;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->access$enqueue(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/taskbar/NamedTask;Z)V

    return-void
.end method
