.class public final Lu7/i$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lu7/i$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu7/i$a;

    invoke-direct {v0}, Lu7/i$a;-><init>()V

    sput-object v0, Lu7/i$a;->a:Lu7/i$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method
