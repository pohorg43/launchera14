.class public final Lr5/h$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr5/h;->a(Li5/x;)Li5/x;
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
.field public static final a:Lr5/h$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr5/h$a;

    invoke-direct {v0}, Lr5/h$a;-><init>()V

    sput-object v0, Lr5/h$a;->a:Lr5/h$a;

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

    check-cast p1, Li5/b;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr5/h;->m:Lr5/h;

    sget-object p0, Lr5/m0;->g:Ljava/util/Set;

    invoke-static {p1}, La6/x;->c(Li5/a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
