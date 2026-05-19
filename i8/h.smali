.class public final Li8/h;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Le8/r;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Le8/r;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Le8/r;->g()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    const/16 v1, 0x3f

    invoke-static {v0, v1, p0}, La/a;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_10
    return-object v0
.end method
