.class public Lk8/g$a;
.super Lf8/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk8/g;->l(ILk8/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lk8/b;

.field public final synthetic d:Lk8/g;


# direct methods
.method public varargs constructor <init>(Lk8/g;Ljava/lang/String;[Ljava/lang/Object;ILk8/b;)V
    .registers 6

    iput-object p1, p0, Lk8/g$a;->d:Lk8/g;

    iput p4, p0, Lk8/g$a;->b:I

    iput-object p5, p0, Lk8/g$a;->c:Lk8/b;

    invoke-direct {p0, p2, p3}, Lf8/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lk8/g$a;->d:Lk8/g;

    iget v1, p0, Lk8/g$a;->b:I

    iget-object v2, p0, Lk8/g$a;->c:Lk8/b;

    iget-object v0, v0, Lk8/g;->v:Lk8/r;

    invoke-virtual {v0, v1, v2}, Lk8/r;->g(ILk8/b;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_11

    :catch_c
    iget-object p0, p0, Lk8/g$a;->d:Lk8/g;

    invoke-static {p0}, Lk8/g;->a(Lk8/g;)V

    :goto_11
    return-void
.end method
