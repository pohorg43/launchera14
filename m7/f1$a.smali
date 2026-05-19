.class public final Lm7/f1$a;
.super Lm7/f1$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,543:1\n1#2:544\n*E\n"
    }
.end annotation


# instance fields
.field public final c:Lm7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/l<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lm7/f1;


# direct methods
.method public constructor <init>(Lm7/f1;JLm7/l;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lm7/l<",
            "-",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lm7/f1$a;->d:Lm7/f1;

    invoke-direct {p0, p2, p3}, Lm7/f1$c;-><init>(J)V

    iput-object p4, p0, Lm7/f1$a;->c:Lm7/l;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lm7/f1$a;->c:Lm7/l;

    iget-object p0, p0, Lm7/f1$a;->d:Lm7/f1;

    sget-object v1, Lh4/z;->a:Lh4/z;

    invoke-interface {v0, p0, v1}, Lm7/l;->s(Lm7/f0;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lm7/f1$c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lm7/f1$a;->c:Lm7/l;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
