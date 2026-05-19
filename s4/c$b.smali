.class public final Ls4/c$b;
.super Li4/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls4/c$b$a;,
        Ls4/c$b$b;,
        Ls4/c$b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li4/b<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ls4/c$c;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Ls4/c;


# direct methods
.method public constructor <init>(Ls4/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ls4/c$b;->d:Ls4/c;

    invoke-direct {p0}, Li4/b;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ls4/c$b;->c:Ljava/util/ArrayDeque;

    iget-object v1, p1, Ls4/c;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object p1, p1, Ls4/c;->a:Ljava/io/File;

    invoke-virtual {p0, p1}, Ls4/c$b;->d(Ljava/io/File;)Ls4/c$a;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_35

    :cond_1e
    iget-object v1, p1, Ls4/c;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance v1, Ls4/c$b$b;

    iget-object p1, p1, Ls4/c;->a:Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ls4/c$b$b;-><init>(Ls4/c$b;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_35

    :cond_31
    sget-object p1, Li4/s0;->c:Li4/s0;

    iput-object p1, p0, Li4/b;->a:Li4/s0;

    :goto_35
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    :goto_0
    iget-object v0, p0, Ls4/c$b;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls4/c$c;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_3e

    :cond_c
    invoke-virtual {v0}, Ls4/c$c;->a()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_18

    iget-object v0, p0, Ls4/c$b;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_18
    iget-object v0, v0, Ls4/c$c;->a:Ljava/io/File;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Ls4/c$b;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v2, p0, Ls4/c$b;->d:Ls4/c;

    iget v2, v2, Ls4/c;->c:I

    if-lt v0, v2, :cond_33

    goto :goto_3d

    :cond_33
    iget-object v0, p0, Ls4/c$b;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1}, Ls4/c$b;->d(Ljava/io/File;)Ls4/c$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3d
    :goto_3d
    move-object v0, v1

    :goto_3e
    if-eqz v0, :cond_47

    iput-object v0, p0, Li4/b;->b:Ljava/lang/Object;

    sget-object v0, Li4/s0;->a:Li4/s0;

    iput-object v0, p0, Li4/b;->a:Li4/s0;

    goto :goto_4b

    :cond_47
    sget-object v0, Li4/s0;->c:Li4/s0;

    iput-object v0, p0, Li4/b;->a:Li4/s0;

    :goto_4b
    return-void
.end method

.method public final d(Ljava/io/File;)Ls4/c$a;
    .registers 4

    iget-object v0, p0, Ls4/c$b;->d:Ls4/c;

    iget-object v0, v0, Ls4/c;->b:Ls4/d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    new-instance v0, Ls4/c$b$a;

    invoke-direct {v0, p0, p1}, Ls4/c$b$a;-><init>(Ls4/c$b;Ljava/io/File;)V

    goto :goto_1e

    :cond_13
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_19
    new-instance v0, Ls4/c$b$c;

    invoke-direct {v0, p0, p1}, Ls4/c$b$c;-><init>(Ls4/c$b;Ljava/io/File;)V

    :goto_1e
    return-object v0
.end method
