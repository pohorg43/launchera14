.class public final Lm7/x1$d;
.super Lr7/q$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm7/x1;->D(Ljava/lang/Object;Lm7/c2;Lm7/w1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,367:1\n525#2:368\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic d:Lm7/x1;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lr7/q;Lm7/x1;Ljava/lang/Object;)V
    .registers 4

    iput-object p2, p0, Lm7/x1$d;->d:Lm7/x1;

    iput-object p3, p0, Lm7/x1$d;->e:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lr7/q$a;-><init>(Lr7/q;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lr7/q;

    iget-object p1, p0, Lm7/x1$d;->d:Lm7/x1;

    invoke-virtual {p1}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lm7/x1$d;->e:Ljava/lang/Object;

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    if-eqz p0, :cond_13

    const/4 p0, 0x0

    goto :goto_15

    :cond_13
    sget-object p0, Lr7/p;->a:Ljava/lang/Object;

    :goto_15
    return-object p0
.end method
