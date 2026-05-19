.class public final Lr5/l0$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr5/l0;->c(Li5/b;)Li5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Li5/b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lr5/l0$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr5/l0$c;

    invoke-direct {v0}, Lr5/l0$c;-><init>()V

    sput-object v0, Lr5/l0$c;->a:Lr5/l0$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Li5/b;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lf5/g;->B(Li5/l;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_5b

    sget-object p0, Lr5/h;->m:Lr5/h;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr5/m0;->f:Ljava/util/Set;

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_24

    goto :goto_58

    :cond_24
    sget-object p0, Lr5/i;->a:Lr5/i;

    invoke-static {p1, v1, p0, v0}, Lo6/c;->b(Li5/b;ZLkotlin/jvm/functions/Function1;I)Li5/b;

    move-result-object p0

    if-eqz p0, :cond_58

    invoke-static {p0}, La6/x;->c(Li5/a;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_33

    goto :goto_58

    :cond_33
    const-string p1, "builtinSignature"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lr5/m0;->c:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    sget-object p0, Lr5/m0$b;->a:Lr5/m0$b;

    :goto_44
    move-object v2, p0

    goto :goto_58

    :cond_46
    sget-object p1, Lr5/m0;->e:Ljava/util/Map;

    invoke-static {p1, p0}, Li4/k0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr5/m0$c;

    sget-object p1, Lr5/m0$c;->b:Lr5/m0$c;

    if-ne p0, p1, :cond_55

    sget-object p0, Lr5/m0$b;->c:Lr5/m0$b;

    goto :goto_44

    :cond_55
    sget-object p0, Lr5/m0$b;->b:Lr5/m0$b;

    goto :goto_44

    :cond_58
    :goto_58
    if-eqz v2, :cond_5b

    goto :goto_5c

    :cond_5b
    move v0, v1

    :goto_5c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
