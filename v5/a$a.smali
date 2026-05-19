.class public final Lv5/a$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/a;-><init>(Ly5/g;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ly5/r;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/a;


# direct methods
.method public constructor <init>(Lv5/a;)V
    .registers 2

    iput-object p1, p0, Lv5/a$a;->a:Lv5/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p1, Ly5/r;

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv5/a$a;->a:Lv5/a;

    iget-object p0, p0, Lv5/a;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_ab

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ly5/q;->J()Ly5/g;

    move-result-object p0

    invoke-interface {p0}, Ly5/g;->F()Z

    move-result p0

    if-eqz p0, :cond_a7

    invoke-interface {p1}, Ly5/t;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {p0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x69e9ad94

    if-eq v2, v3, :cond_91

    const v3, -0x4d378041

    if-eq v2, v3, :cond_4d

    const v3, 0x8cdac1b

    if-eq v2, v3, :cond_44

    goto :goto_a2

    :cond_44
    const-string v2, "hashCode"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_99

    goto :goto_a2

    :cond_4d
    const-string v2, "equals"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_56

    goto :goto_a2

    :cond_56
    invoke-interface {p1}, Ly5/r;->g()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li4/v;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly5/a0;

    const/4 p1, 0x0

    if-eqz p0, :cond_68

    invoke-interface {p0}, Ly5/a0;->getType()Ly5/x;

    move-result-object p0

    goto :goto_69

    :cond_68
    move-object p0, p1

    :goto_69
    instance-of v2, p0, Ly5/j;

    if-eqz v2, :cond_70

    move-object p1, p0

    check-cast p1, Ly5/j;

    :cond_70
    if-nez p1, :cond_73

    goto :goto_a2

    :cond_73
    invoke-interface {p1}, Ly5/j;->getClassifier()Ly5/i;

    move-result-object p0

    instance-of p1, p0, Ly5/g;

    if-eqz p1, :cond_a2

    check-cast p0, Ly5/g;

    invoke-interface {p0}, Ly5/g;->e()Lh6/c;

    move-result-object p0

    if-eqz p0, :cond_a2

    invoke-virtual {p0}, Lh6/c;->b()Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.lang.Object"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    move p0, v0

    goto :goto_a3

    :cond_91
    const-string v2, "toString"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    :cond_99
    invoke-interface {p1}, Ly5/r;->g()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    goto :goto_a3

    :cond_a2
    :goto_a2
    move p0, v1

    :goto_a3
    if-eqz p0, :cond_a7

    move p0, v0

    goto :goto_a8

    :cond_a7
    move p0, v1

    :goto_a8
    if-nez p0, :cond_ab

    goto :goto_ac

    :cond_ab
    move v0, v1

    :goto_ac
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
