.class public final Lz2/a$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/a;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lz2/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lz2/a$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lz2/a$a;

    invoke-direct {v0}, Lz2/a$a;-><init>()V

    sput-object v0, Lz2/a$a;->a:Lz2/a$a;

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
    .registers 1

    new-instance p0, Lz2/c;

    invoke-direct {p0}, Lz2/c;-><init>()V

    return-object p0
.end method
