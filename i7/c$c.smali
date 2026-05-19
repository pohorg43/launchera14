.class public final Li7/c$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Li7/c$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Li7/c$c;

    invoke-direct {v0}, Li7/c$c;-><init>()V

    sput-object v0, Li7/c$c;->a:Li7/c$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
