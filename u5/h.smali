.class public final Lu5/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu5/k;


# instance fields
.field public final a:Lu5/g;

.field public final b:Li5/l;

.field public final c:I

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ly5/y;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lx6/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/h<",
            "Ly5/y;",
            "Lv5/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu5/g;Li5/l;Ly5/z;I)V
    .registers 6

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterOwner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu5/h;->a:Lu5/g;

    iput-object p2, p0, Lu5/h;->b:Li5/l;

    iput p4, p0, Lu5/h;->c:I

    invoke-interface {p3}, Ly5/z;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    const-string p2, "<this>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_40

    add-int/lit8 p4, p3, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, p4

    goto :goto_2b

    :cond_40
    iput-object p2, p0, Lu5/h;->d:Ljava/util/Map;

    iget-object p1, p0, Lu5/h;->a:Lu5/g;

    iget-object p1, p1, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->a:Lx6/m;

    new-instance p2, Lu5/h$a;

    invoke-direct {p2, p0}, Lu5/h$a;-><init>(Lu5/h;)V

    invoke-interface {p1, p2}, Lx6/m;->f(Lkotlin/jvm/functions/Function1;)Lx6/h;

    move-result-object p1

    iput-object p1, p0, Lu5/h;->e:Lx6/h;

    return-void
.end method


# virtual methods
.method public a(Ly5/y;)Li5/a1;
    .registers 3

    const-string v0, "javaTypeParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu5/h;->e:Lx6/h;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv5/v;

    if-eqz v0, :cond_10

    goto :goto_18

    :cond_10
    iget-object p0, p0, Lu5/h;->a:Lu5/g;

    iget-object p0, p0, Lu5/g;->b:Lu5/k;

    invoke-interface {p0, p1}, Lu5/k;->a(Ly5/y;)Li5/a1;

    move-result-object v0

    :goto_18
    return-object v0
.end method
