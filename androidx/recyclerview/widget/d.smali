.class public final synthetic Landroidx/recyclerview/widget/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
