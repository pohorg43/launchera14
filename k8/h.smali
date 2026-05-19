.class public Lk8/h;
.super Lf8/b;
.source ""


# instance fields
.field public final synthetic b:Lk8/g;


# direct methods
.method public varargs constructor <init>(Lk8/g;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lk8/h;->b:Lk8/g;

    invoke-direct {p0, p2, p3}, Lf8/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object p0, p0, Lk8/h;->b:Lk8/g;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v0}, Lk8/g;->k(ZII)V

    return-void
.end method
