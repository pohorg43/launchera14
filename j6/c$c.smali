.class public final Lj6/c$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lj6/i;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lj6/c$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lj6/c$c;

    invoke-direct {v0}, Lj6/c$c;-><init>()V

    sput-object v0, Lj6/c$c;->a:Lj6/c$c;

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
    .registers 2

    check-cast p1, Lj6/i;

    const-string p0, "$this$withOptions"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lj6/i;->b(Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
