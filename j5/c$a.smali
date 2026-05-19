.class public final Lj5/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnnotationDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnnotationDescriptor.kt\norg/jetbrains/kotlin/descriptors/annotations/AnnotationDescriptor$DefaultImpls\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n1#2:45\n*E\n"
    }
.end annotation


# direct methods
.method public static a(Lj5/c;)Lh6/c;
    .registers 3

    invoke-static {p0}, Lo6/c;->d(Lj5/c;)Li5/e;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    invoke-static {p0}, La7/j;->f(Li5/l;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_f

    :cond_e
    move-object p0, v0

    :goto_f
    if-eqz p0, :cond_15

    invoke-static {p0}, Lo6/c;->c(Li5/l;)Lh6/c;

    move-result-object v0

    :cond_15
    return-object v0
.end method
