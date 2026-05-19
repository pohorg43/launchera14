.class public abstract Lm7/g1;
.super Lm7/e1;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lm7/e1;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract B()Ljava/lang/Thread;
.end method

.method public C(JLm7/f1$c;)V
    .registers 4

    sget-object p0, Lm7/n0;->h:Lm7/n0;

    invoke-virtual {p0, p1, p2, p3}, Lm7/f1;->H(JLm7/f1$c;)V

    return-void
.end method
