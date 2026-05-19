.class public final Lv5/f$d;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/f;-><init>(Lu5/g;Li5/l;Ly5/g;Li5/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Ly5/a;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaClassDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaClassDescriptor.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaClassDescriptor$moduleAnnotations$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,322:1\n1#2:323\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/f;


# direct methods
.method public constructor <init>(Lv5/f;)V
    .registers 2

    iput-object p1, p0, Lv5/f$d;->a:Lv5/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lv5/f$d;->a:Lv5/f;

    invoke-static {v0}, Lo6/c;->f(Li5/h;)Lh6/b;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lv5/f$d;->a:Lv5/f;

    iget-object p0, p0, Lv5/f;->h:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->w:Lr5/x;

    invoke-interface {p0, v0}, Lr5/x;->a(Lh6/b;)Ljava/util/List;

    move-result-object p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method
