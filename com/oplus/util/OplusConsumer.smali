.class public Lcom/oplus/util/OplusConsumer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusConsumer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusConsumer.kt\ncom/oplus/util/OplusConsumer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,33:1\n1#2:34\n*E\n"
    }
.end annotation


# instance fields
.field private core:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/util/OplusConsumer;->core:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/util/OplusConsumer;->core:Ljava/util/function/Consumer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/util/OplusConsumer;->core:Ljava/util/function/Consumer;

    return-void
.end method

.method public final destroy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/util/OplusConsumer;->core:Ljava/util/function/Consumer;

    return-void
.end method

.method public final isAccepted()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/util/OplusConsumer;->core:Ljava/util/function/Consumer;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
