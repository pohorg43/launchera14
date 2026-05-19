.class public Lk8/o;
.super Lf8/b;
.source ""


# instance fields
.field public final synthetic b:Lk8/g$g;


# direct methods
.method public varargs constructor <init>(Lk8/g$g;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lk8/o;->b:Lk8/g$g;

    invoke-direct {p0, p2, p3}, Lf8/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object p0, p0, Lk8/o;->b:Lk8/g$g;

    iget-object p0, p0, Lk8/g$g;->c:Lk8/g;

    iget-object v0, p0, Lk8/g;->b:Lk8/g$e;

    invoke-virtual {v0, p0}, Lk8/g$e;->a(Lk8/g;)V

    return-void
.end method
