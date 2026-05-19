.class public final Lv5/j;
.super Ll5/c0;
.source ""


# static fields
.field public static final synthetic n:[Lz4/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final g:Ly5/u;

.field public final h:Lu5/g;

.field public final i:Lg6/e;

.field public final j:Lx6/i;

.field public final k:Lv5/d;

.field public final l:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/util/List<",
            "Lh6/c;",
            ">;>;"
        }
    .end annotation
.end field

.field public final m:Lj5/h;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-class v0, Lv5/j;

    const/4 v1, 0x2

    new-array v1, v1, [Lz4/n;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "binaryClasses"

    const-string v5, "getBinaryClasses$descriptors_jvm()Ljava/util/Map;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    const-string v3, "partToFacade"

    const-string v4, "getPartToFacade()Ljava/util/HashMap;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lv5/j;->n:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Lu5/g;Ly5/u;)V
    .registers 6

    const-string v0, "outerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jPackage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->o:Li5/e0;

    invoke-interface {p2}, Ly5/u;->e()Lh6/c;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ll5/c0;-><init>(Li5/e0;Lh6/c;)V

    iput-object p2, p0, Lv5/j;->g:Ly5/u;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p1, p0, v0, v1, v2}, Lu5/b;->a(Lu5/g;Li5/g;Ly5/z;II)Lu5/g;

    move-result-object v0

    iput-object v0, p0, Lv5/j;->h:Lu5/g;

    iget-object p1, p1, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->d:La6/j;

    invoke-virtual {p1}, La6/j;->c()Lu6/k;

    move-result-object p1

    iget-object p1, p1, Lu6/k;->c:Lu6/l;

    invoke-static {p1}, Lm4/d;->h(Lu6/l;)Lg6/e;

    move-result-object p1

    iput-object p1, p0, Lv5/j;->i:Lg6/e;

    iget-object p1, v0, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->a:Lx6/m;

    new-instance v1, Lv5/j$a;

    invoke-direct {v1, p0}, Lv5/j$a;-><init>(Lv5/j;)V

    invoke-interface {p1, v1}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lv5/j;->j:Lx6/i;

    new-instance p1, Lv5/d;

    invoke-direct {p1, v0, p2, p0}, Lv5/d;-><init>(Lu5/g;Ly5/u;Lv5/j;)V

    iput-object p1, p0, Lv5/j;->k:Lv5/d;

    iget-object p1, v0, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->a:Lx6/m;

    new-instance v1, Lv5/j$c;

    invoke-direct {v1, p0}, Lv5/j$c;-><init>(Lv5/j;)V

    sget-object v2, Li4/y;->a:Li4/y;

    invoke-interface {p1, v1, v2}, Lx6/m;->b(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lv5/j;->l:Lx6/i;

    iget-object p1, v0, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->v:Lr5/a0;

    iget-boolean p1, p1, Lr5/a0;->c:Z

    if-eqz p1, :cond_64

    sget p1, Lj5/h;->I:I

    sget-object p1, Lj5/h$a;->b:Lj5/h;

    goto :goto_68

    :cond_64
    invoke-static {v0, p2}, Ly1/a;->a(Lu5/g;Ly5/d;)Lj5/h;

    move-result-object p1

    :goto_68
    iput-object p1, p0, Lv5/j;->m:Lj5/h;

    iget-object p1, v0, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->a:Lx6/m;

    new-instance p2, Lv5/j$b;

    invoke-direct {p2, p0}, Lv5/j$b;-><init>(Lv5/j;)V

    invoke-interface {p1, p2}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    return-void
.end method


# virtual methods
.method public getAnnotations()Lj5/h;
    .registers 1

    iget-object p0, p0, Lv5/j;->m:Lj5/h;

    return-object p0
.end method

.method public getSource()Li5/v0;
    .registers 2

    new-instance v0, La6/u;

    invoke-direct {v0, p0}, La6/u;-><init>(Lv5/j;)V

    return-object v0
.end method

.method public l()Lr6/i;
    .registers 1

    iget-object p0, p0, Lv5/j;->k:Lv5/d;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Lazy Java package fragment: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll5/c0;->e:Lh6/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lv5/j;->h:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->o:Li5/e0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final z0()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "La6/t;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lv5/j;->j:Lx6/i;

    sget-object v0, Lv5/j;->n:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lx6/l;->a(Lx6/i;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method
