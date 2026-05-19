.class public final Lm7/g;
.super Lm7/f1;
.source ""


# instance fields
.field public final h:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .registers 2

    invoke-direct {p0}, Lm7/f1;-><init>()V

    iput-object p1, p0, Lm7/g;->h:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public B()Ljava/lang/Thread;
    .registers 1

    iget-object p0, p0, Lm7/g;->h:Ljava/lang/Thread;

    return-object p0
.end method
