.class public final Lc3/b$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc3/b;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lc3/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc3/b$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc3/b$a;

    invoke-direct {v0}, Lc3/b$a;-><init>()V

    sput-object v0, Lc3/b$a;->a:Lc3/b$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    new-instance p0, Lc3/b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc3/b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
