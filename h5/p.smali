.class public final Lh5/p;
.super Li7/b$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li7/b$b<",
        "Li5/e;",
        "Lh5/l$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lh5/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lh5/l$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh5/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lh5/p;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Li7/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lh5/p;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lh5/l$a;

    if-nez p0, :cond_a

    sget-object p0, Lh5/l$a;->c:Lh5/l$a;

    :cond_a
    return-object p0
.end method

.method public c(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Li5/e;

    const-string v0, "javaClassDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La6/a0;->a:La6/a0;

    iget-object v1, p0, Lh5/p;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lv3/j0;->a(La6/a0;Li5/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lh5/s;->a:Lh5/s;

    sget-object v0, Lh5/s;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p1, p0, Lh5/p;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v0, Lh5/l$a;->a:Lh5/l$a;

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_3d

    :cond_20
    sget-object v0, Lh5/s;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object p1, p0, Lh5/p;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v0, Lh5/l$a;->b:Lh5/l$a;

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_3d

    :cond_2f
    sget-object v0, Lh5/s;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lh5/p;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v0, Lh5/l$a;->d:Lh5/l$a;

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_3d
    :goto_3d
    iget-object p0, p0, Lh5/p;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p0, :cond_45

    const/4 p0, 0x1

    goto :goto_46

    :cond_45
    const/4 p0, 0x0

    :goto_46
    return p0
.end method
