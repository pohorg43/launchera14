.class public Lk8/g$b;
.super Lf8/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk8/g;->m(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Lk8/g;


# direct methods
.method public varargs constructor <init>(Lk8/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .registers 7

    iput-object p1, p0, Lk8/g$b;->d:Lk8/g;

    iput p4, p0, Lk8/g$b;->b:I

    iput-wide p5, p0, Lk8/g$b;->c:J

    invoke-direct {p0, p2, p3}, Lf8/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lk8/g$b;->d:Lk8/g;

    iget-object v0, v0, Lk8/g;->v:Lk8/r;

    iget v1, p0, Lk8/g$b;->b:I

    iget-wide v2, p0, Lk8/g$b;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lk8/r;->h(IJ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_11

    :catch_c
    iget-object p0, p0, Lk8/g$b;->d:Lk8/g;

    invoke-static {p0}, Lk8/g;->a(Lk8/g;)V

    :goto_11
    return-void
.end method
