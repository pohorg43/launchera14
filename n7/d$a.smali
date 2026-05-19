.class public final Ln7/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/d;->m(JLm7/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n148#2:19\n149#2:21\n1#3:20\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lm7/l;

.field public final synthetic b:Ln7/d;


# direct methods
.method public constructor <init>(Lm7/l;Ln7/d;)V
    .registers 3

    iput-object p1, p0, Ln7/d$a;->a:Lm7/l;

    iput-object p2, p0, Ln7/d$a;->b:Ln7/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Ln7/d$a;->a:Lm7/l;

    iget-object p0, p0, Ln7/d$a;->b:Ln7/d;

    sget-object v1, Lh4/z;->a:Lh4/z;

    invoke-interface {v0, p0, v1}, Lm7/l;->s(Lm7/f0;Ljava/lang/Object;)V

    return-void
.end method
