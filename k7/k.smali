.class public Lk7/k;
.super Lk7/j;
.source ""


# direct methods
.method public static final c(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object p0
.end method
