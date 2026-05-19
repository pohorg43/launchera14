.class public final synthetic Ld/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
