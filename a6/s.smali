.class public final La6/s;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(La6/r;Lh6/b;Lg6/e;)La6/t;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jvmMetadataVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, La6/r;->c(Lh6/b;Lg6/e;)La6/r$a;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, La6/r$a;->a()La6/t;

    move-result-object p0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return-object p0
.end method
