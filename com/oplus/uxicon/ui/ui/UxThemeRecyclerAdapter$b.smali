.class public Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->showNotSupportUxIconDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$b;->a:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    :try_start_0
    iget-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$b;->a:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p2}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$000(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "com.nearme.themespace.SET_THEME"

    invoke-static {p2, v0}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->startThemeStoreActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_47

    :catch_c
    move-exception p2

    const-string v0, "showNotSupportUxIconDialog ActivityNotFoundException:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "UxThemeRecyclerAdapter"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_23
    new-instance p2, Landroid/content/Intent;

    const-string v2, "com.oplus.uxdesign.ThemeSettingActivity"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$b;->a:Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->access$000(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_33
    .catch Landroid/content/ActivityNotFoundException; {:try_start_23 .. :try_end_33} :catch_34

    goto :goto_47

    :catch_34
    move-exception p0

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
