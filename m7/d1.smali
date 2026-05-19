.class public final Lm7/d1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm7/n1;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lm7/d1;->a:Z

    return-void
.end method


# virtual methods
.method public b()Lm7/c2;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public isActive()Z
    .registers 1

    iget-boolean p0, p0, Lm7/d1;->a:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Empty{"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lm7/d1;->a:Z

    if-eqz p0, :cond_d

    const-string p0, "Active"

    goto :goto_f

    :cond_d
    const-string p0, "New"

    :goto_f
    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
