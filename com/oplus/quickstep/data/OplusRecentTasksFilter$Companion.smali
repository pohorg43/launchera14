.class public final Lcom/oplus/quickstep/data/OplusRecentTasksFilter$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/data/OplusRecentTasksFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/data/OplusRecentTasksFilter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTaskListWithOutFilter()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->access$getTaskListWithOutFilter$cp()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final setTaskListWithOutFilter(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->access$setTaskListWithOutFilter$cp(Ljava/util/ArrayList;)V

    return-void
.end method
