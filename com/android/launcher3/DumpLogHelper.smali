.class public final Lcom/android/launcher3/DumpLogHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/DumpLogHelper$DumpLogCallback;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/DumpLogHelper;

.field private static callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/DumpLogHelper$DumpLogCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/DumpLogHelper;

    invoke-direct {v0}, Lcom/android/launcher3/DumpLogHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/DumpLogHelper;->INSTANCE:Lcom/android/launcher3/DumpLogHelper;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/DumpLogHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addCallbacks(Lcom/android/launcher3/DumpLogHelper$DumpLogCallback;)V
    .registers 2

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/DumpLogHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    sget-object p0, Lcom/android/launcher3/DumpLogHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public final dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    const-string/jumbo p0, "prefix"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "writer"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/DumpLogHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DumpLogHelper$DumpLogCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/DumpLogHelper$DumpLogCallback;->dumpLog(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public final getCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/DumpLogHelper$DumpLogCallback;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/DumpLogHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public final removeCallbacks(Lcom/android/launcher3/DumpLogHelper$DumpLogCallback;)V
    .registers 2

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/DumpLogHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    sget-object p0, Lcom/android/launcher3/DumpLogHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public final setCallbacks(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/DumpLogHelper$DumpLogCallback;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/DumpLogHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method
