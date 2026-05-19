.class public final Lm7/i2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nExecutors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Executors.kt\nkotlinx/coroutines/ResumeUndispatchedRunnable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,207:1\n1#2:208\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lm7/f0;

.field public final b:Lm7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/l<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm7/f0;Lm7/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/f0;",
            "Lm7/l<",
            "-",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7/i2;->a:Lm7/f0;

    iput-object p2, p0, Lm7/i2;->b:Lm7/l;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lm7/i2;->b:Lm7/l;

    iget-object p0, p0, Lm7/i2;->a:Lm7/f0;

    sget-object v1, Lh4/z;->a:Lh4/z;

    invoke-interface {v0, p0, v1}, Lm7/l;->s(Lm7/f0;Ljava/lang/Object;)V

    return-void
.end method
